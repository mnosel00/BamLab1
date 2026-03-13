.class Lcom/example/bamlab1/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/bamlab1/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/bamlab1/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/bamlab1/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/bamlab1/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/example/bamlab1/MainActivity$1;->this$0:Lcom/example/bamlab1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 24
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/bamlab1/MainActivity$1;->this$0:Lcom/example/bamlab1/MainActivity;

    const-class v2, Lcom/example/bamlab1/SecondActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/bamlab1/MainActivity$1;->this$0:Lcom/example/bamlab1/MainActivity;

    invoke-virtual {v1, v0}, Lcom/example/bamlab1/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 26
    return-void
.end method
