.class public Lcom/example/bamlab1/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private powerReceiver:Lcom/example/bamlab1/PowerReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 12
    new-instance v0, Lcom/example/bamlab1/PowerReceiver;

    invoke-direct {v0}, Lcom/example/bamlab1/PowerReceiver;-><init>()V

    iput-object v0, p0, Lcom/example/bamlab1/MainActivity;->powerReceiver:Lcom/example/bamlab1/PowerReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget v0, Lcom/example/bamlab1/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/example/bamlab1/MainActivity;->setContentView(I)V

    .line 18
    const-string v0, "BAMLABx"

    const-string v1, "MainActivity onCreate prosto z .smali"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget v0, Lcom/example/bamlab1/R$id;->button_open_second:I

    invoke-virtual {p0, v0}, Lcom/example/bamlab1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, "buttonOpenSecond":Landroid/widget/Button;
    new-instance v1, Lcom/example/bamlab1/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/example/bamlab1/MainActivity$1;-><init>(Lcom/example/bamlab1/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 30
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    iget-object v2, p0, Lcom/example/bamlab1/MainActivity;->powerReceiver:Lcom/example/bamlab1/PowerReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/example/bamlab1/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 64
    iget-object v0, p0, Lcom/example/bamlab1/MainActivity;->powerReceiver:Lcom/example/bamlab1/PowerReceiver;

    invoke-virtual {p0, v0}, Lcom/example/bamlab1/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    const-string v0, "BAMLABx"

    const-string v1, "MainActivity onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 52
    const-string v0, "BAMLABx"

    const-string v1, "MainActivity onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 45
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 46
    const-string v0, "BAMLABx"

    const-string v1, "MainActivity onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 39
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 40
    const-string v0, "BAMLABx"

    const-string v1, "MainActivity onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 57
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 58
    const-string v0, "BAMLABx"

    const-string v1, "MainActivity onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
