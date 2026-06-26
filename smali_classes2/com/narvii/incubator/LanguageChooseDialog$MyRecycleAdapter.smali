.class Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LanguageChooseDialog.java"


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
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
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

    .line 107
    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->languages:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;)Ljava/util/List;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->languages:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->languages:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 125
    instance-of v0, p1, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;

    if-eqz v0, :cond_3

    .line 126
    move-object v0, p1

    check-cast v0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;

    .line 127
    iget-object v1, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->languages:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/language/LanguageSpec;

    .line 128
    iget-object v1, v0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;->tvLocalLanguage:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 129
    iget-object v2, p2, Lcom/narvii/language/LanguageSpec;->localizedName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    iget-object v1, v0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;->tvLanguage:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 132
    iget-object v2, p2, Lcom/narvii/language/LanguageSpec;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_1
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;-><init>(Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object p1, v0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;->imgPicked:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 144
    iget-object p2, p2, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-static {v0}, Lcom/narvii/incubator/LanguageChooseDialog;->access$100(Lcom/narvii/incubator/LanguageChooseDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 147
    :cond_3
    instance-of p1, p1, Lcom/narvii/incubator/LanguageChooseDialog$FootViewHolder;

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 114
    iget-object p2, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0477

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 115
    new-instance p2, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;

    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-direct {p2, v0, p1}, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;-><init>(Lcom/narvii/incubator/LanguageChooseDialog;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 117
    iget-object p2, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b01fa

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 118
    new-instance p2, Lcom/narvii/incubator/LanguageChooseDialog$FootViewHolder;

    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-direct {p2, v0, p1}, Lcom/narvii/incubator/LanguageChooseDialog$FootViewHolder;-><init>(Lcom/narvii/incubator/LanguageChooseDialog;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
