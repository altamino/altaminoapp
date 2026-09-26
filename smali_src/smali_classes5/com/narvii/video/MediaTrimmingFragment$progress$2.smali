.class final Lcom/narvii/video/MediaTrimmingFragment$progress$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/MediaTrimmingFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/util/dialog/ProgressDialog;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaTrimmingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaTrimmingFragment.kt\ncom/narvii/video/MediaTrimmingFragment$progress$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,461:1\n1#2:462\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/MediaTrimmingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/MediaTrimmingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$progress$2;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/MediaTrimmingFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/MediaTrimmingFragment$progress$2;->invoke$lambda$2(Lcom/narvii/video/MediaTrimmingFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final invoke$lambda$2(Lcom/narvii/video/MediaTrimmingFragment;Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-lez p1, :cond_0

    .line 15
    move p1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v1

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {p0, p1}, Lcom/narvii/video/MediaTrimmingFragment;->access$setCancelled$p(Lcom/narvii/video/MediaTrimmingFragment;Z)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/narvii/video/MediaTrimmingFragment;->access$getInProcessTrimTask$p(Lcom/narvii/video/MediaTrimmingFragment;)Lg7/d;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-static {p0}, Lcom/narvii/video/MediaTrimmingFragment;->access$getInProcessCoverImageTask$p(Lcom/narvii/video/MediaTrimmingFragment;)Lg7/d;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/MediaTrimmingFragment;->getTasksTouchDown()Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    const/4 p1, 0x2

    .line 54
    const/4 v2, 0x0

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v1, v1, p1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 61
    :cond_3
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/video/MediaTrimmingFragment$progress$2;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/narvii/video/MediaTrimmingFragment$progress$2;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    .line 3
    new-instance v2, Lcom/narvii/video/i0;

    invoke-direct {v2, v1}, Lcom/narvii/video/i0;-><init>(Lcom/narvii/video/MediaTrimmingFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/video/MediaTrimmingFragment$progress$2;->invoke()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    return-object v0
.end method
