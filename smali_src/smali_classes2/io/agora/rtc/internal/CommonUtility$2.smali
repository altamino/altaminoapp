.class Lio/agora/rtc/internal/CommonUtility$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/internal/CommonUtility;->regiseterBroadcaster(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/internal/CommonUtility;


# direct methods
.method constructor <init>(Lio/agora/rtc/internal/CommonUtility;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility$2;->this$0:Lio/agora/rtc/internal/CommonUtility;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility$2;->this$0:Lio/agora/rtc/internal/CommonUtility;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lio/agora/rtc/internal/CommonUtility;->access$100(Lio/agora/rtc/internal/CommonUtility;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility$2;->this$0:Lio/agora/rtc/internal/CommonUtility;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lio/agora/rtc/internal/CommonUtility;->access$200(Lio/agora/rtc/internal/CommonUtility;)V

    .line 26
    :cond_0
    return-void
.end method
