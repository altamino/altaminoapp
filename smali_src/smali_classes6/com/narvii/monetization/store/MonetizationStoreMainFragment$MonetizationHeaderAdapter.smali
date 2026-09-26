.class Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/MonetizationStoreMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonetizationHeaderAdapter"
.end annotation


# instance fields
.field private HEAD_SUB:Ljava/lang/Object;

.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->HEAD_SUB:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->HEAD_SUB:Ljava/lang/Object;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->HEAD_SUB:Ljava/lang/Object;

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0d05b1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    const p2, 0x7f0a0645

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 25
    .line 26
    const-string p3, "assets://store_banner_animation.webp"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    const p2, 0x7f0a0961

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    iget-object p3, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    const-string p2, "membership"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    check-cast p2, Lcom/narvii/wallet/MembershipService;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 53
    move-result-object p3

    .line 54
    .line 55
    .line 56
    const v0, 0x7f12117b

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 60
    move-result-object p3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    .line 64
    move-result p2

    .line 65
    .line 66
    if-eqz p2, :cond_0

    .line 67
    .line 68
    new-instance p2, Landroid/text/SpannableStringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 75
    move-result p3

    .line 76
    .line 77
    const/16 v0, 0x20

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    const v1, 0x7f12117c

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    .line 96
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 97
    .line 98
    .line 99
    const v1, -0x718e4

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 106
    move-result v1

    .line 107
    const/4 v2, 0x0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 111
    .line 112
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 113
    const/4 v1, 0x1

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 120
    move-result v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 124
    move-object p3, p2

    .line 125
    .line 126
    .line 127
    :cond_0
    const p2, 0x7f0a0962

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    move-result-object p2

    .line 132
    .line 133
    check-cast p2, Landroid/widget/TextView;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 139
    .line 140
    .line 141
    invoke-static {p2}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->K(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V

    .line 142
    return-object p1

    .line 143
    :cond_1
    const/4 p1, 0x0

    .line 144
    return-object p1
.end method
