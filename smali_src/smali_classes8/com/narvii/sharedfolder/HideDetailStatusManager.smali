.class public Lcom/narvii/sharedfolder/HideDetailStatusManager;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/HideDetailStatusManager;->hideDetail:Z

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/sharedfolder/HideDetailStatusManager;->onHideStatusChangedListenerList:Ljava/util/HashSet;

    .line 14
    return-void
.end method


# virtual methods
.method public isHideDetail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/sharedfolder/HideDetailStatusManager;->hideDetail:Z

    return v0
.end method

.method public register(Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/HideDetailStatusManager;->onHideStatusChangedListenerList:Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public setHideDetail(Z)V
    .locals 2

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/HideDetailStatusManager;->hideDetail:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/sharedfolder/HideDetailStatusManager;->onHideStatusChangedListenerList:Ljava/util/HashSet;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, p1}, Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;->onHideDetail(Z)V

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public unRegister(Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/HideDetailStatusManager;->onHideStatusChangedListenerList:Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method
