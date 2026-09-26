.class Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;
.super Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaBrowserServiceImplApi26"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$MediaBrowserServiceApi26;
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    .line 6
    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$ResultWrapper;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$ResultWrapper<",
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;-><init>(Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompat$ResultWrapper;Landroid/os/Bundle;)V

    .line 6
    .line 7
    iget-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 8
    .line 9
    iget-object v1, p2, Landroidx/media/MediaBrowserServiceCompat;->mConnectionFromFwk:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 10
    .line 11
    iput-object v1, p2, Landroidx/media/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1, v0, p3}, Landroidx/media/MediaBrowserServiceCompat;->g(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 17
    const/4 p2, 0x0

    .line 18
    .line 19
    iput-object p2, p1, Landroidx/media/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 20
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$MediaBrowserServiceApi26;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$MediaBrowserServiceApi26;-><init>(Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;Landroid/content/Context;)V

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceFwk:Landroid/service/media/MediaBrowserService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 13
    return-void
.end method
