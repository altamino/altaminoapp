.class Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;->this$1:Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;->this$1:Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->g(Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/language/LanguageSpec;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter$1;->this$1:Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/incubator/LanguageChooseDialog;->itemClickListener:Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;->onItemClick(Lcom/narvii/language/LanguageSpec;)V

    .line 30
    :cond_0
    return-void
.end method
