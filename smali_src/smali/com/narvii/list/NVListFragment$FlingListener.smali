.class public Lcom/narvii/list/NVListFragment$FlingListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/NVListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingListener"
.end annotation


# instance fields
.field stoped:Z

.field final synthetic this$0:Lcom/narvii/list/NVListFragment;


# direct methods
.method protected constructor <init>(Lcom/narvii/list/NVListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$FlingListener;->this$0:Lcom/narvii/list/NVListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/narvii/list/NVListFragment$FlingListener;->stoped:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment$FlingListener;->stoped:Z

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$FlingListener;->this$0:Lcom/narvii/list/NVListFragment;

    .line 18
    .line 19
    const-string p2, "imageLoader"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/util/image/NVImageLoader;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/image/NVImageLoader;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/volley/RequestQueue;->stop()V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    const-wide/16 p1, 0xc8

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 39
    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment$FlingListener;->stoped:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment$FlingListener;->stoped:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$FlingListener;->this$0:Lcom/narvii/list/NVListFragment;

    .line 10
    .line 11
    const-string v1, "imageLoader"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/util/image/NVImageLoader;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 25
    :cond_0
    return-void
.end method
