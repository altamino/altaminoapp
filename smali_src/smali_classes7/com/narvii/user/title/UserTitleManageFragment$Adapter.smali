.class Lcom/narvii/user/title/UserTitleManageFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/title/UserTitleManageFragment$Adapter;->this$0:Lcom/narvii/user/title/UserTitleManageFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/api/UserTitle;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d0422

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const p3, 0x7f0a0e9e

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    check-cast p3, Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleManageFragment$Adapter;->this$0:Lcom/narvii/user/title/UserTitleManageFragment;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/narvii/user/title/UserTitleManageFragment;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    .line 35
    move-result v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    const/4 v0, -0x1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_0
    const v0, -0xb5b5b6

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleManageFragment$Adapter;->this$0:Lcom/narvii/user/title/UserTitleManageFragment;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/narvii/user/title/UserTitleManageFragment;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getBackgroundDrawable(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/GradientDrawable;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-object p2
.end method
