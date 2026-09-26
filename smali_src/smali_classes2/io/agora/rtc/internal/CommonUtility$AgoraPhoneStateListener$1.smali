.class Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;


# direct methods
.method constructor <init>(Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener$1;->this$1:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener$1;->this$1:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 3
    .line 4
    iget-object v0, v0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->this$0:Lio/agora/rtc/internal/CommonUtility;

    .line 5
    .line 6
    const/16 v1, 0x16

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lio/agora/rtc/internal/CommonUtility;->onPhoneStateChanged(ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lio/agora/rtc/internal/CommonUtility;->access$400()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const-string v2, "fail to resume "

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :goto_0
    return-void
.end method
