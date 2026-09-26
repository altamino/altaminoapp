.class Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->u(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v1, v0, Lcom/narvii/model/StoreItemBaseObject;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    check-cast v0, Lcom/narvii/model/StoreItemBaseObject;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/model/StoreItemBaseObject;->availableInAnyStore()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/list/prefs/PrefsText;

    .line 30
    .line 31
    .line 32
    const v1, 0x7f120189

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsText;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    iget v0, v1, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    .line 42
    const/4 v2, 0x1

    .line 43
    .line 44
    if-ne v0, v2, :cond_2

    .line 45
    .line 46
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 49
    .line 50
    .line 51
    const v3, 0x7f12017a

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v3, v2}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 61
    .line 62
    .line 63
    const v3, 0x7f120183

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    iput-object v2, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 70
    const/4 v2, 0x0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Lcom/narvii/list/prefs/PrefsToggle;->setTextSingleLine(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/narvii/model/OwnershipInfo;->isAutoRenew()Z

    .line 77
    move-result v2

    .line 78
    .line 79
    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 80
    .line 81
    new-instance v2, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;

    .line 82
    .line 83
    .line 84
    invoke-direct {v2, p0, v1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;Lcom/narvii/model/OwnershipInfo;)V

    .line 85
    .line 86
    iput-object v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    :goto_0
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/list/prefs/PrefsToggle;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/list/prefs/PrefsToggle;

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0d066c

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    const p2, 0x7f0a09d3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    check-cast p2, Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object p3, v0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    iget-boolean p3, v0, Lcom/narvii/list/prefs/PrefsToggle;->textSingleLine:Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 37
    .line 38
    .line 39
    const p2, 0x7f0a041f

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    check-cast p2, Landroid/widget/TextView;

    .line 46
    .line 47
    iget-object p3, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result p3

    .line 52
    .line 53
    if-eqz p3, :cond_0

    .line 54
    .line 55
    const/16 p3, 0x8

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 p3, 0x0

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    iget-object p3, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    const p2, 0x7f0a02cb

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    check-cast p2, Landroid/widget/CheckBox;

    .line 75
    const/4 p3, 0x0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    .line 80
    iget-boolean p3, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 84
    .line 85
    new-instance p3, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;

    .line 86
    .line 87
    .line 88
    invoke-direct {p3, p0, v0, p2}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;Lcom/narvii/list/prefs/PrefsToggle;Landroid/widget/CheckBox;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    .line 93
    iget-boolean p2, v0, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    .line 94
    .line 95
    if-eqz p2, :cond_1

    .line 96
    .line 97
    const/high16 p2, 0x3f800000    # 1.0f

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_1
    const/high16 p2, 0x3f000000    # 0.5f

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 104
    return-object p1

    .line 105
    .line 106
    :cond_2
    instance-of v1, v0, Lcom/narvii/list/prefs/PrefsText;

    .line 107
    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    check-cast v0, Lcom/narvii/list/prefs/PrefsItem;

    .line 111
    .line 112
    .line 113
    const p1, 0x7f0d0669

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    const p2, 0x7f0a0e51

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    check-cast p2, Landroid/widget/TextView;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/narvii/list/prefs/PrefsAdapter;->getPrefsText(Lcom/narvii/list/prefs/PrefsItem;)Ljava/lang/CharSequence;

    .line 130
    move-result-object p3

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-object p1

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 138
    move-result-object p1

    .line 139
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
