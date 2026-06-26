.class public Lcom/narvii/list/NVListFragment$FlingListener;
.super Ljava/lang/Object;
.source "NVListFragment.java"

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

    .line 950
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$FlingListener;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    if-eqz p2, :cond_1

    .line 957
    iget-boolean p1, p0, Lcom/narvii/list/NVListFragment$FlingListener;->stoped:Z

    if-eqz p1, :cond_0

    .line 958
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 960
    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment$FlingListener;->stoped:Z

    .line 961
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$FlingListener;->this$0:Lcom/narvii/list/NVListFragment;

    const-string p2, "imageLoader"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/image/NVImageLoader;

    .line 962
    invoke-virtual {p1}, Lcom/narvii/util/image/NVImageLoader;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/volley/RequestQueue;->stop()V

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0xc8

    .line 965
    invoke-static {p0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 976
    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment$FlingListener;->stoped:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 977
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment$FlingListener;->stoped:Z

    .line 978
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$FlingListener;->this$0:Lcom/narvii/list/NVListFragment;

    const-string v1, "imageLoader"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 979
    invoke-virtual {v0}, Lcom/narvii/util/image/NVImageLoader;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    :cond_0
    return-void
.end method
