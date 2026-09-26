.class final Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$CreateCommuViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CreateCommuViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;

.field private final tintIcon:Lcom/narvii/widget/TintButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;
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
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$CreateCommuViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a0e82

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string p2, "findViewById(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$CreateCommuViewHolder;->tintIcon:Lcom/narvii/widget/TintButton;

    .line 27
    .line 28
    const-string p2, "#FF50E3C2"

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 32
    move-result p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public final getTintIcon()Lcom/narvii/widget/TintButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$CreateCommuViewHolder;->tintIcon:Lcom/narvii/widget/TintButton;

    return-object v0
.end method
