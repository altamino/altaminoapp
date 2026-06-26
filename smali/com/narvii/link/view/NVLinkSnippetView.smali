.class public abstract Lcom/narvii/link/view/NVLinkSnippetView;
.super Lcom/narvii/link/view/LoadTrackView;
.source "NVLinkSnippetView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Lcom/narvii/link/view/LoadTrackView;"
    }
.end annotation


# instance fields
.field protected nvContext:Lcom/narvii/app/NVContext;

.field otherCommunity:Lcom/narvii/model/Community;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/link/view/LoadTrackView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setNvContext(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/narvii/link/view/NVLinkSnippetView;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public abstract setObject(Lcom/narvii/model/NVObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setOtherCommunity(Lcom/narvii/model/Community;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/link/view/NVLinkSnippetView;->otherCommunity:Lcom/narvii/model/Community;

    return-void
.end method
