.class Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/incubator/LanguageChooseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRecycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_FOOTER_ITEM:I = 0x1

.field private static final TYPE_NORMAL_ITEM:I


# instance fields
.field private languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/language/LanguageSpec;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/incubator/LanguageChooseDialog;


# direct methods
.method public constructor <init>(Lcom/narvii/incubator/LanguageChooseDialog;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/language/LanguageSpec;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->languages:Ljava/util/List;

    .line 8
    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->languages:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->languages:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->getItemCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    return v1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->languages:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/language/LanguageSpec;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;->tvLocalLanguage:Landroid/widget/TextView;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v2, p2, Lcom/narvii/language/LanguageSpec;->localizedName:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    :cond_0
    iget-object v1, v0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;->tvLanguage:Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v2, p2, Lcom/narvii/language/LanguageSpec;->name:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    :cond_1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 36
    .line 37
    new-instance v2, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, p0, p1}, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;-><init>(Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    iget-object p1, v0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;->imgPicked:Landroid/widget/ImageView;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget-object p2, p2, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/narvii/incubator/LanguageChooseDialog;->a(Lcom/narvii/incubator/LanguageChooseDialog;)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result p2

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    const/4 p2, 0x0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 p2, 0x4

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_3
    instance-of p1, p1, Lcom/narvii/incubator/LanguageChooseDialog$FootViewHolder;

    .line 71
    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0d04a6

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    new-instance p2, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, v0, p1}, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;-><init>(Lcom/narvii/incubator/LanguageChooseDialog;Landroid/view/View;)V

    .line 28
    return-object p2

    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    .line 31
    if-ne p2, v1, :cond_1

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    const v1, 0x7f0d0228

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    new-instance p2, Lcom/narvii/incubator/LanguageChooseDialog$FootViewHolder;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, v0, p1}, Lcom/narvii/incubator/LanguageChooseDialog$FootViewHolder;-><init>(Lcom/narvii/incubator/LanguageChooseDialog;Landroid/view/View;)V

    .line 56
    return-object p2

    .line 57
    :cond_1
    const/4 p1, 0x0

    .line 58
    return-object p1
.end method
