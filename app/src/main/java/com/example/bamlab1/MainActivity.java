package com.example.bamlab1;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    private PowerReceiver powerReceiver = new PowerReceiver();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Log.d("BAMLABx", "MainActivity onCreate");

        Button buttonOpenSecond = findViewById(R.id.button_open_second);
        buttonOpenSecond.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, SecondActivity.class);
                startActivity(intent);
            }
        });

        IntentFilter filter = new IntentFilter();
        filter.addAction(Intent.ACTION_POWER_CONNECTED);
        filter.addAction(Intent.ACTION_POWER_DISCONNECTED);

        registerReceiver(powerReceiver, filter);
    }


    @Override
    protected void onStart() {
        super.onStart();
        Log.d("BAMLABx", "MainActivity onStart");
    }

    @Override
    protected void onResume() {
        super.onResume();
        Log.d("BAMLABx", "MainActivity onResume");
    }

    @Override
    protected void onPause() {
        super.onPause();
        Log.d("BAMLABx", "MainActivity onPause");
    }

    @Override
    protected void onStop() {
        super.onStop();
        Log.d("BAMLABx", "MainActivity onStop");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        unregisterReceiver(powerReceiver);
        Log.d("BAMLABx", "MainActivity onDestroy");
    }
}