.class public final Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/topic/adapter/RecentCommunityAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "itemView"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a06d5

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->icon:Lcom/narvii/widget/NVImageView;

    .line 22
    .line 23
    .line 24
    const p1, 0x7f0a0e9e

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 33
    return-void
.end method


# virtual methods
.method public final getIcon()Lcom/narvii/widget/NVImageView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->icon:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public final updateData(Lcom/narvii/model/Community;)V
    .locals 2
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "c"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->icon:Lcom/narvii/widget/NVImageView;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    return-void
.end method
