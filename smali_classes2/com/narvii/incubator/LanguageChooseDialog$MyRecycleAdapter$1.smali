.class Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;
.super Ljava/lang/Object;
.source "LanguageChooseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;->this$1:Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;

    iput-object p2, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;->this$1:Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;

    invoke-static {p1}, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->access$000(Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/LanguageSpec;

    .line 138
    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;->this$1:Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;

    iget-object v0, v0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    iget-object v0, v0, Lcom/narvii/incubator/LanguageChooseDialog;->itemClickListener:Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0, p1}, Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;->onItemClick(Lcom/narvii/language/LanguageSpec;)V

    :cond_0
    return-void
.end method
