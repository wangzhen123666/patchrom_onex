.class Lcom/android/server/HtcDongleMode$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcDongleMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcDongleMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcDongleMode;


# direct methods
.method constructor <init>(Lcom/android/server/HtcDongleMode;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/HtcDongleMode$1;->this$0:Lcom/android/server/HtcDongleMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.server.HtcDongleMode.ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/android/server/HtcDongleMode$1;->this$0:Lcom/android/server/HtcDongleMode;

    const/4 v2, 0x1

    #calls: Lcom/android/server/HtcDongleMode;->enableDongleMode(Z)V
    invoke-static {v1, v2}, Lcom/android/server/HtcDongleMode;->access$000(Lcom/android/server/HtcDongleMode;Z)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v1, "com.android.server.HtcDongleMode.OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/server/HtcDongleMode$1;->this$0:Lcom/android/server/HtcDongleMode;

    const/4 v2, 0x0

    #calls: Lcom/android/server/HtcDongleMode;->enableDongleMode(Z)V
    invoke-static {v1, v2}, Lcom/android/server/HtcDongleMode;->access$000(Lcom/android/server/HtcDongleMode;Z)V

    goto :goto_0
.end method