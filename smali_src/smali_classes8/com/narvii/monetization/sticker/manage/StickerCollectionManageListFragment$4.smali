.class Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$4;
.super Lcom/narvii/list/DividerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$4;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected getDividerLayoutId()I
    .locals 1

    const v0, 0x7f0d04d2

    return v0
.end method
