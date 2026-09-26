.class public final synthetic Lcom/narvii/master/home/profile/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/home/profile/LinkCommunityFragment;

.field public final synthetic b:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/profile/e0;->a:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    iput-object p2, p0, Lcom/narvii/master/home/profile/e0;->b:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/profile/e0;->a:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    iget-object v1, p0, Lcom/narvii/master/home/profile/e0;->b:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    invoke-static {v0, v1, p1, p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->a(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
