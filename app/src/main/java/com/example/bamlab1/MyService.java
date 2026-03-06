package com.example.bamlab1;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

public class MyService extends Service {
    public MyService() {
    }

    @Override
    public void onCreate() {
        super.onCreate();
        Log.d("BAMLABx", "MyService onCreate");
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.d("BAMLABx", "MyService onStartCommand");
        return START_NOT_STICKY;
    }

    @Override
    public IBinder onBind(Intent intent) {
        Log.d("BAMLABx", "MyService onBind");
        return null;
    }

    @Override
    public boolean onUnbind(Intent intent) {
        Log.d("BAMLABx", "MyService onUnbind");
        return super.onUnbind(intent);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.d("BAMLABx", "MyService onDestroy");
    }
}