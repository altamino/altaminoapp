.class Lcom/narvii/amino/CommunityNavBarFragment$11;
.super Ljava/lang/Object;
.source "CommunityNavBarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/CommunityNavBarFragment;->updateActionBarIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/CommunityNavBarFragment;

.field final synthetic val$imgCommunityIcon:Lcom/narvii/widget/NVImageView;


# direct methods
.method constructor <init>(Lcom/narvii/amino/CommunityNavBarFragment;Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$11;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    iput-object p2, p0, Lcom/narvii/amino/CommunityNavBarFragment$11;->val$imgCommunityIcon:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 487
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$11;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment$11;->val$imgCommunityIcon:Lcom/narvii/widget/NVImageView;

    invoke-static {p1, v0}, Lcom/narvii/amino/CommunityNavBarFragment;->access$700(Lcom/narvii/amino/CommunityNavBarFragment;Lcom/narvii/widget/NVImageView;)V

    return-void
.end method
