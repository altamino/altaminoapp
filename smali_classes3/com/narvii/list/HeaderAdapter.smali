.class public abstract Lcom/narvii/list/HeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "HeaderAdapter.java"


# instance fields
.field protected attachedAdapter:Lcom/narvii/list/NVAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/narvii/list/HeaderAdapter;->attachedAdapter:Lcom/narvii/list/NVAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/list/HeaderAdapter;->attachedAdapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

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

    .line 18
    iput-object p1, p0, Lcom/narvii/list/HeaderAdapter;->attachedAdapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method
