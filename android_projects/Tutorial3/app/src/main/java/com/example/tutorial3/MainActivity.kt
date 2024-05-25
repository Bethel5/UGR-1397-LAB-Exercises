package com.example.tutorial3

import android.content.Intent
import android.content.res.Configuration
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.platform.LocalConfiguration
import com.example.tutorial3.R

@Composable
fun ComposeTutorialTheme(content: @Composable () -> Unit) {
    MaterialTheme(
        typography = Typography(
            bodyMedium = TextStyle(
                fontSize = 16.sp,
                color = Color.Black
            )
        ),
        content = content
    )
}

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            ComposeTutorialTheme {
                Surface(modifier = Modifier.fillMaxSize()) {
                    val message = getMessageFromIntent(intent)
                    MessageContent(message = message)
                }
            }
        }
    }
}

@Composable
fun MessageContent(message: String) {
    val configuration = LocalConfiguration.current
    val isDarkMode = configuration.uiMode and Configuration.UI_MODE_NIGHT_MASK == Configuration.UI_MODE_NIGHT_YES

    val textStyle = if (isDarkMode) {
        MaterialTheme.typography.bodyMedium.copy(fontSize = 14.sp, color = Color.White)
    } else {
        MaterialTheme.typography.bodyMedium.copy(fontSize = 14.sp, color = Color.Black)
    }

    MessageCard(message = message, textStyle = textStyle)
}

@Composable
fun MessageCard(message: String, textStyle: TextStyle) {
    Row(modifier = Modifier.padding(all = 8.dp)) {
        Image(
            painter = painterResource(R.drawable.picture),
            contentDescription = null,
            modifier = Modifier
                .size(40.dp)
                .clip(CircleShape)
                .border(1.5.dp, MaterialTheme.colorScheme.primary, CircleShape)
        )
        Spacer(modifier = Modifier.width(8.dp))

        Column {
            Text(
                text = "Author",
                color = MaterialTheme.colorScheme.secondary,
                style = MaterialTheme.typography.titleSmall
            )

            Spacer(modifier = Modifier.height(4.dp))

            Text(
                text = message,
                style = textStyle
            )
        }
    }
}

@Preview(name = "Light Mode")
@Preview(
    uiMode = Configuration.UI_MODE_NIGHT_YES,
    showBackground = true,
    name = "Dark Mode"
)
@Composable
fun PreviewMessageCard() {
    ComposeTutorialTheme {
        Surface {
            MessageCard(message = "Preview Message", textStyle = MaterialTheme.typography.bodyMedium)
        }
    }
}

fun getMessageFromIntent(intent: Intent): String {
    return intent.getStringExtra("message") ?: "Default message"
}
