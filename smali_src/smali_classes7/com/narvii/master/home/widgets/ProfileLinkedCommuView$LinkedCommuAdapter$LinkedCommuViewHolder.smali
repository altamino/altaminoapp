.class final Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LinkedCommuViewHolder"
.end annotation


# instance fields
.field private communityIdTV:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private iconIV:Lcom/narvii/widget/ThumbImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nameTV:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;
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
    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a036b

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "findViewById(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->iconIV:Lcom/narvii/widget/ThumbImageView;

    .line 27
    .line 28
    .line 29
    const p1, 0x7f0a037c

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->nameTV:Landroid/widget/TextView;

    .line 41
    .line 42
    .line 43
    const p1, 0x7f0a036d

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    check-cast p1, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->communityIdTV:Landroid/widget/TextView;

    .line 55
    return-void
.end method


# virtual methods
.method public final getCommunityIdTV()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->communityIdTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getIconIV()Lcom/narvii/widget/ThumbImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->iconIV:Lcom/narvii/widget/ThumbImageView;

    return-object v0
.end method

.method public final getNameTV()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->nameTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setCommunityIdTV(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->communityIdTV:Landroid/widget/TextView;

    return-void
.end method

.method public final setIconIV(Lcom/narvii/widget/ThumbImageView;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->iconIV:Lcom/narvii/widget/ThumbImageView;

    return-void
.end method

.method public final setNameTV(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$LinkedCommuViewHolder;->nameTV:Landroid/widget/TextView;

    return-void
.end method
