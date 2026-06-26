.class Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LanguageChooseDialog.java"


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

    .line 172
    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    .line 173
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090622

    .line 174
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;->tvLanguage:Landroid/widget/TextView;

    const p1, 0x7f09069a

    .line 175
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;->tvLocalLanguage:Landroid/widget/TextView;

    const p1, 0x7f090629

    .line 176
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;->imgPicked:Landroid/widget/ImageView;

    return-void
.end method
