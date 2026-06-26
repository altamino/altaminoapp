.class Lcom/narvii/user/title/UserTitleManageFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "UserTitleManageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/title/UserTitleManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/api/UserTitle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/title/UserTitleManageFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/title/UserTitleManageFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/narvii/user/title/UserTitleManageFragment$Adapter;->this$0:Lcom/narvii/user/title/UserTitleManageFragment;

    .line 84
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 89
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/api/UserTitle;

    const v0, 0x7f0b03ec

    .line 90
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090b9a

    .line 91
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 92
    iget-object v0, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleManageFragment$Adapter;->this$0:Lcom/narvii/user/title/UserTitleManageFragment;

    iget-object v0, v0, Lcom/narvii/user/title/UserTitleManageFragment;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    move-result v0

    .line 94
    invoke-static {v0}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const v0, -0xb5b5b6

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleManageFragment$Adapter;->this$0:Lcom/narvii/user/title/UserTitleManageFragment;

    iget-object v0, v0, Lcom/narvii/user/title/UserTitleManageFragment;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getBackgroundDrawable(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
