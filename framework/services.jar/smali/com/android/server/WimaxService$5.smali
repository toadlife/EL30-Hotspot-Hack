.class Lcom/android/server/WimaxService$5;
.super Landroid/content/BroadcastReceiver;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WimaxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WimaxService;


# direct methods
.method constructor <init>(Lcom/android/server/WimaxService;)V
    .locals 0
    .parameter

    .prologue

    iput-object p1, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, "WimaxService"


    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0


    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1


    const-string v4, "WimaxService"

    const-string v4, "ACTION_SCREEN_ON"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/net/wimax/WimaxStateTracker;->SetScreenOff(Z)V


    invoke-static {}, Landroid/net/wimax/WimaxNative;->getLinkState()Z


    :cond_0
    :goto_0
    return-void


    :cond_1
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2


    const-string v4, "WimaxService"

    const-string v4, "ACTION_SCREEN_OFF"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/net/wimax/WimaxStateTracker;->SetScreenOff(Z)V

    goto :goto_0


    :cond_2
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/wimax/WimaxStateTracker;

    const-string v4, "com.android.server.WimaxManager.action.WIMAX_DHCP_RENEW"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$800(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "WimaxService"

    const-string v4, "-----------ACTION_WIMAX_DHCP_RENEW------------"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    :cond_3
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-static {}, Lcom/android/server/WimaxService;->access$900()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    #calls: Lcom/android/server/WimaxService;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V
    invoke-static {v4, v5}, Lcom/android/server/WimaxService;->access$1000(Lcom/android/server/WimaxService;Landroid/os/PowerManager$WakeLock;)V


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wimax/WimaxStateTracker;->notifyIpRenew()V

    goto :goto_0


    :cond_4
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$800(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "WimaxService"

    const-string v4, "ACTION_BATTERY_CHANGED"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    :cond_5
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2


    .local v2, nPluggedType:I
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$800(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[nPluggedType] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getWimaxMode() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v5}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " m_nPluggedType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v5}, Lcom/android/server/WimaxService;->access$1100(Lcom/android/server/WimaxService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mbUSBTethered : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/WimaxService;->access$1200()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    :cond_6
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$1100(Lcom/android/server/WimaxService;)I

    move-result v4

    if-eq v4, v9, :cond_b

    if-ne v2, v9, :cond_b


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #setter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v4, v2}, Lcom/android/server/WimaxService;->access$1102(Lcom/android/server/WimaxService;I)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$800(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "WimaxService"

    const-string v4, "ACTION_BATTERY_CHANGED : USB CABLE IS PLUGGED"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    :cond_7
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v4

    if-ne v4, v7, :cond_8


    const-string v4, "WimaxService"

    const-string v4, "discard - already tethered mode"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0


    :cond_8
    invoke-static {}, Lcom/android/server/WimaxService;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxEnabledStatus()I

    move-result v4

    if-ne v4, v10, :cond_0


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v7, v7}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wimax/WimaxStateTracker;->clearRetryFlag()V


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v4, v5, :cond_9


    const-string v4, "WimaxService"

    const-string v4, "it will connect as tethered mode"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v7}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto/16 :goto_0


    :cond_9
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->SCANNING:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_a

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->READY:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_a

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->CONNECTING:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_a

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_a

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v4, v5, :cond_0


    :cond_a
    const-string v4, "WimaxService"

    const-string v4, "it will disconnect for re-connecting as tethered mode"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->disconnect()Z

    goto/16 :goto_0


    :cond_b
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$1100(Lcom/android/server/WimaxService;)I

    move-result v4

    if-ne v4, v9, :cond_0

    if-eq v2, v9, :cond_0


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #setter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v4, v2}, Lcom/android/server/WimaxService;->access$1102(Lcom/android/server/WimaxService;I)I


    const-string v4, "WimaxService"

    const-string v4, "ACTION_BATTERY_CHANGED : USB CABLE IS UNPLUGGED"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    invoke-static {v8}, Lcom/android/server/WimaxService;->access$1202(Z)Z


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v4

    if-ne v4, v7, :cond_e


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxEnabledStatus()I

    move-result v4

    if-ne v4, v10, :cond_0


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v7, v8}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wimax/WimaxStateTracker;->clearRetryFlag()V


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v4, v5, :cond_c


    const-string v4, "WimaxService"

    const-string v4, "it will connect as normal mode"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v7}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto/16 :goto_0


    :cond_c
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->SCANNING:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_d

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->READY:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_d

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->CONNECTING:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_d

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_d

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v4, v5, :cond_0


    :cond_d
    const-string v4, "WimaxService"

    const-string v4, "it will disconnect for re-connecting as normal mode"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->disconnect()Z

    goto/16 :goto_0


    :cond_e
    const-string v4, "WimaxService"

    const-string v4, "discard - already NOT tethered mode"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0


    .end local v2           #nPluggedType:I
    :cond_f
    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18


    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1


    .local v1, nApState:I
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$800(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIFI_AP_STATE_CHANGED_ACTION = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    :cond_10
    packed-switch v1, :pswitch_data_0


    :pswitch_0
    const-string v4, "WimaxService"

    const-string v4, "discard - WIFI_AP_STATE_CHANGED_ACTION intent."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0


    :pswitch_1
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v4

    if-eq v4, v9, :cond_11

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_11


    const-string v4, "WimaxService"

    const-string v4, "discard - WIFI_AP_STATE_CHANGED_ACTION intent."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0


    :pswitch_2
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v4

    if-ne v4, v7, :cond_11


    const-string v4, "WimaxService"

    const-string v4, "discard - WIFI_AP_STATE_CHANGED_ACTION intent. current mode is wimax tethered."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0


    :cond_11
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    if-ne v1, v10, :cond_13

    move v5, v7

    :goto_1
    invoke-virtual {v4, v9, v5}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxEnabledStatus()I

    move-result v4

    if-ne v4, v10, :cond_12


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wimax/WimaxStateTracker;->clearRetryFlag()V


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v4, v5, :cond_15


    if-ne v1, v10, :cond_14


    const-string v4, "WimaxService"

    const-string v4, "it will be start scan to re-connect as backhaul mode"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I


    :goto_2
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v7}, Lcom/android/server/WimaxService;->startScan(Z)Z


    .end local v1           #nApState:I
    :cond_12
    :goto_3
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #calls: Lcom/android/server/WimaxService;->updateWimaxStatus()V
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)V

    goto/16 :goto_0

    .restart local v1       #nApState:I
    :cond_13
    move v5, v8


    goto :goto_1


    :cond_14
    const-string v4, "WimaxService"

    const-string v4, "it will be start scan to re-connect as normal mode"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/net/wimax/WimaxStateTracker;->SetNoBackOff(Z)V

    goto :goto_2


    :cond_15
    if-ne v1, v10, :cond_17


    const-string v4, "WimaxService"

    const-string v4, "it will be disconnect to re-connect as backhaul mode"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    iget v4, v4, Lcom/android/server/WimaxService;->m_nCallState:I

    if-ne v4, v9, :cond_16


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/net/wimax/WimaxStateTracker;->SetNoBackOff(Z)V


    :cond_16
    :goto_4
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->disconnect()Z

    goto :goto_3


    :cond_17
    const-string v4, "WimaxService"

    const-string v4, "it will be disconnect to re-connect as normal mode"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/net/wimax/WimaxStateTracker;->SetNoBackOff(Z)V

    goto :goto_4


    .end local v1           #nApState:I
    :cond_18
    const-string v4, "com.android.settings.TETHERING_WIMAX_REALM_CHANGE_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21


    const-string v4, "tethering"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3


    .local v3, usbTethered:Z
    invoke-static {}, Lcom/android/server/WimaxService;->access$1200()Z

    move-result v4

    if-eq v4, v3, :cond_0


    const-string v4, "WimaxService"

    const-string v4, "TETHERING_WIMAX_REALM_CHANGE_ACTION"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I


    invoke-static {v3}, Lcom/android/server/WimaxService;->access$1202(Z)Z


    invoke-virtual {p1, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$800(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbTethered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    :cond_19
    invoke-static {}, Lcom/android/server/WimaxService;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_1d


    const-string v4, "WimaxService"

    const-string v4, "Tethering option is checked"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v4

    if-ne v4, v7, :cond_1a


    const-string v4, "WimaxService"

    const-string v4, "discard - already tethered mode"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0


    :cond_1a
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$1100(Lcom/android/server/WimaxService;)I

    move-result v4

    if-ne v4, v9, :cond_0

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxEnabledStatus()I

    move-result v4

    if-ne v4, v10, :cond_0


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v7, v7}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wimax/WimaxStateTracker;->clearRetryFlag()V


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v4, v5, :cond_1b


    const-string v4, "WimaxService"

    const-string v4, "it will connect as tethered mode"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v7}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto/16 :goto_0


    :cond_1b
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->SCANNING:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_1c

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->READY:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_1c

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->CONNECTING:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_1c

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_1c

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v4, v5, :cond_0


    :cond_1c
    const-string v4, "WimaxService"

    const-string v4, "it will disconnect for re-connecting as tethered mode"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->disconnect()Z

    goto/16 :goto_0


    :cond_1d
    const-string v4, "WimaxService"

    const-string v4, "Tethering option is unchecked"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v4

    if-ne v4, v7, :cond_20


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxEnabledStatus()I

    move-result v4

    if-ne v4, v10, :cond_0


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v7, v8}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wimax/WimaxStateTracker;->clearRetryFlag()V


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v4, v5, :cond_1e


    const-string v4, "WimaxService"

    const-string v4, "it will connect as normal mode"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v7}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto/16 :goto_0


    :cond_1e
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->SCANNING:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_1f

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->READY:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_1f

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->CONNECTING:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_1f

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/wimax/WimaxState;

    if-eq v4, v5, :cond_1f

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v4, v5, :cond_0


    :cond_1f
    const-string v4, "WimaxService"

    const-string v4, "it will disconnect for re-connecting as normal mode"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->disconnect()Z

    goto/16 :goto_0


    :cond_20
    const-string v4, "WimaxService"

    const-string v4, "discard - already NOT tethered mode"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0


    .end local v3           #usbTethered:Z
    :cond_21
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0


    const-string v4, "WimaxService"

    const-string v4, "@@@@@ ACTION_SHUTDOWN @@@@@"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxEnabledStatus()I

    move-result v4

    if-eq v4, v10, :cond_22

    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxEnabledStatus()I

    move-result v4

    if-ne v4, v9, :cond_12


    :cond_22
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v4

    if-ne v4, v7, :cond_23


    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v7, v8}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I


    :cond_23
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wimax/WimaxStateTracker;->disconnectAndStop()Z

    goto/16 :goto_0


    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
