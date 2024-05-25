package com.example.counterapp_2

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {

    private var count = 0
    private lateinit var textViewCount: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        textViewCount = findViewById(R.id.textView_count)
        val buttonIncrement = findViewById<Button>(R.id.button_increment)
        val buttonDecrement = findViewById<Button>(R.id.button_decrement)
        val buttonReset = findViewById<Button>(R.id.button_reset)

        buttonIncrement.setOnClickListener {
            count++
            updateCountDisplay()
        }

        buttonDecrement.setOnClickListener {
            if (count > 0) {
                count--
                updateCountDisplay()
            } else {
                
            }
        }

        buttonReset.setOnClickListener {
            count = 0
            updateCountDisplay()
        }
    }

    private fun updateCountDisplay() {
        textViewCount.text = count.toString()
    }
}
