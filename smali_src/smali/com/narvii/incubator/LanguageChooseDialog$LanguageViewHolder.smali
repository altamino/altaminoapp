.class Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/incubator/LanguageChooseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LanguageViewHolder"
.end annotation


# instance fields
.field imgPicked:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/narvii/incubator/LanguageChooseDialog;

.field tvLanguage:Landroid/widget/TextView;

.field tvLocalLanguage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/incubator/LanguageChooseDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f0a07a4

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;->tvLanguage:Landroid/widget/TextView;

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0a0824

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;->tvLocalLanguage:Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    const p1, 0x7f0a07ab

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Landroid/widget/ImageView;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;->imgPicked:Landroid/widget/ImageView;

    .line 39
    return-void
.end method
