.class public Lcom/example/bamlab1/SecondActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SecondActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sget v0, Lcom/example/bamlab1/R$layout;->activity_second:I

    invoke-virtual {p0, v0}, Lcom/example/bamlab1/SecondActivity;->setContentView(I)V

    .line 19
    const-string v0, "BAMLABx"

    const-string v1, "SecondActivity onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/bamlab1/MyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/bamlab1/SecondActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 52
    const-string v0, "BAMLABx"

    const-string v1, "SecondActivity onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/bamlab1/MyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/bamlab1/SecondActivity;->stopService(Landroid/content/Intent;)Z

    .line 56
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 39
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 40
    const-string v0, "BAMLABx"

    const-string v1, "SecondActivity onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 33
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 34
    const-string v0, "BAMLABx"

    const-string v1, "SecondActivity onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 27
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 28
    const-string v0, "BAMLABx"

    const-string v1, "SecondActivity onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 45
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 46
    const-string v0, "BAMLABx"

    const-string v1, "SecondActivity onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method
