.class public Lcom/narvii/invite/ValidLinkFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ValidLinkFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/invite/ValidLinkFragment$Adapter;
    }
.end annotation


# instance fields
.field revokedIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/invite/ValidLinkFragment;->revokedIds:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 40
    new-instance p1, Lcom/narvii/invite/ValidLinkFragment$Adapter;

    const-string v0, "__communityId"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/invite/ValidLinkFragment$Adapter;-><init>(Lcom/narvii/invite/ValidLinkFragment;Lcom/narvii/app/NVContext;I)V

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget p1, Lcom/narvii/lib/R$string;->existing_invite_codes:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method
