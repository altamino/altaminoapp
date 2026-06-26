.class public Lcom/narvii/sharedfolder/HideDetailStatusManager;
.super Ljava/lang/Object;
.source "HideDetailStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;
    }
.end annotation


# instance fields
.field hideDetail:Z

.field onHideStatusChangedListenerList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/HideDetailStatusManager;->hideDetail:Z

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/sharedfolder/HideDetailStatusManager;->onHideStatusChangedListenerList:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public isHideDetail()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/narvii/sharedfolder/HideDetailStatusManager;->hideDetail:Z

    return v0
.end method

.method public register(Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/sharedfolder/HideDetailStatusManager;->onHideStatusChangedListenerList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHideDetail(Z)V
    .locals 2

    .line 18
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/HideDetailStatusManager;->hideDetail:Z

    .line 19
    iget-object v0, p0, Lcom/narvii/sharedfolder/HideDetailStatusManager;->onHideStatusChangedListenerList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;

    if-eqz v1, :cond_0

    .line 21
    invoke-interface {v1, p1}, Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;->onHideDetail(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unRegister(Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/sharedfolder/HideDetailStatusManager;->onHideStatusChangedListenerList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
