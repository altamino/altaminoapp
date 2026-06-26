.class public final Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter$refresh$1;
.super Ljava/lang/Object;
.source "DiscoverFragment.kt"

# interfaces
.implements Lcom/narvii/paging/source/PageRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/paging/source/PageRequestCallback;


# direct methods
.method constructor <init>(Lcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter$refresh$1;->$callback:Lcom/narvii/paging/source/PageRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageRequestFinished(I)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter$refresh$1;->$callback:Lcom/narvii/paging/source/PageRequestCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    :cond_0
    return-void
.end method
