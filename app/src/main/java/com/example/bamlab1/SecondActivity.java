package com.example.bamlab1;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class SecondActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        Log.d("BAMLABx", "SecondActivity onCreate");

        Intent serviceIntent = new Intent(this, MyService.class);
        startService(serviceIntent);
    }

    @Override
    protected void onStart() {
        super.onStart();
        Log.d("BAMLABx", "SecondActivity onStart");
    }

    @Override
    protected void onResume() {
        super.onResume();
        Log.d("BAMLABx", "SecondActivity onResume");
    }

    @Override
    protected void onPause() {
        super.onPause();
        Log.d("BAMLABx", "SecondActivity onPause");
    }

    @Override
    protected void onStop() {
        super.onStop();
        Log.d("BAMLABx", "SecondActivity onStop");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.d("BAMLABx", "SecondActivity onDestroy");

        Intent serviceIntent = new Intent(this, MyService.class);
        stopService(serviceIntent);
    }
}