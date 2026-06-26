.class Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$3;
.super Ljava/lang/Object;
.source "CustomizedStickerListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->setEditing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$3;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$3;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->setEditing(Z)V

    return-void
.end method
