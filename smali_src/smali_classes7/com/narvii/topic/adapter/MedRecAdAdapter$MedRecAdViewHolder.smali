.class public final Lcom/narvii/topic/adapter/MedRecAdAdapter$MedRecAdViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/MedRecAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MedRecAdViewHolder"
.end annotation


# instance fields
.field private mediaLabAdView:Lai/medialab/medialabads2/banners/MediaLabAdView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "itemView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final getMediaLabAdView()Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/MedRecAdAdapter$MedRecAdViewHolder;->mediaLabAdView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    return-object v0
.end method

.method public final setMediaLabAdView(Lai/medialab/medialabads2/banners/MediaLabAdView;)V
    .locals 0
    .param p1    # Lai/medialab/medialabads2/banners/MediaLabAdView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/adapter/MedRecAdAdapter$MedRecAdViewHolder;->mediaLabAdView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    return-void
.end method
