.class public final synthetic Lcom/narvii/master/home/profile/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

.field public final synthetic b:Lcom/narvii/master/home/profile/LinkCommunityFragment;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;Lcom/narvii/master/home/profile/LinkCommunityFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/profile/d0;->a:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    iput-object p2, p0, Lcom/narvii/master/home/profile/d0;->b:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    iput p3, p0, Lcom/narvii/master/home/profile/d0;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/profile/d0;->a:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    iget-object v1, p0, Lcom/narvii/master/home/profile/d0;->b:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    iget v2, p0, Lcom/narvii/master/home/profile/d0;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->b(Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;Lcom/narvii/master/home/profile/LinkCommunityFragment;ILandroid/view/View;)V

    return-void
.end method
