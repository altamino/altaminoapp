.class public abstract Lcom/narvii/list/HeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# instance fields
.field protected attachedAdapter:Lcom/narvii/list/NVAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/HeaderAdapter;->attachedAdapter:Lcom/narvii/list/NVAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/list/HeaderAdapter;->attachedAdapter:Lcom/narvii/list/NVAdapter;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_1
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setAttachedAdapter(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/list/HeaderAdapter;->attachedAdapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method
