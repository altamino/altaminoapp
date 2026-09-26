.class Lio/agora/rtc/internal/CommonUtility$1;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/internal/CommonUtility;->enableOrientationListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/internal/CommonUtility;


# direct methods
.method constructor <init>(Lio/agora/rtc/internal/CommonUtility;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "x0",
            "x1"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility$1;->this$0:Lio/agora/rtc/internal/CommonUtility;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility$1;->this$0:Lio/agora/rtc/internal/CommonUtility;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lio/agora/rtc/internal/CommonUtility;->access$000(Lio/agora/rtc/internal/CommonUtility;I)V

    .line 10
    return-void
.end method
