.class public final Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecentCommunityAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/RecentCommunityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field private final icon:Lcom/narvii/widget/NVImageView;

.field final synthetic this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090562

    .line 124
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->icon:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f090b9a

    .line 125
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getIcon()Lcom/narvii/widget/NVImageView;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->icon:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public final updateData(Lcom/narvii/model/Community;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->icon:Lcom/narvii/widget/NVImageView;

    iget-object v1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 130
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const-string v1, "title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
