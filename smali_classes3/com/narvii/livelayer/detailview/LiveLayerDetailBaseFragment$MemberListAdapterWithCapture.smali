.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$MemberListAdapterWithCapture;
.super Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;
.source "LiveLayerDetailBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MemberListAdapterWithCapture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$MemberListAdapterWithCapture;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    .line 255
    invoke-direct {p0, p2}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$MemberListAdapterWithCapture;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    iget-object v0, v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->onlineCategoryConfig:Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    return-object v0
.end method

.method public onMoreItemClick()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$MemberListAdapterWithCapture;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    iget-object v0, v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/narvii/livelayer/BackgroundHelper;->saveWithDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    invoke-super {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->onMoreItemClick()Z

    move-result v0

    return v0
.end method
