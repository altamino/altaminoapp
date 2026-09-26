.class public Lcom/narvii/monetization/utils/SetBubbleHintDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;
    }
.end annotation


# instance fields
.field private btnClose:Landroid/view/View;

.field private btnSelectChat:Landroid/view/View;

.field private btnSetAllChats:Landroid/view/View;

.field private bubble:Lcom/narvii/model/ChatBubble;

.field context:Lcom/narvii/app/NVContext;

.field private imgPreview:Lcom/narvii/widget/NVImageView;

.field listener:Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;

.field private threadId:Ljava/lang/String;

.field private tvBubbleName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatBubble;Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->context:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->bubble:Lcom/narvii/model/ChatBubble;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->threadId:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d01d5

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    const p1, 0x7f0a0321

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->btnClose:Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    const p1, 0x7f0a0cc6

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->btnSelectChat:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    const p1, 0x7f0a0cdc

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->btnSetAllChats:Landroid/view/View;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    const p1, 0x7f0a022b

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->imgPreview:Lcom/narvii/widget/NVImageView;

    .line 67
    .line 68
    iget p1, p2, Lcom/narvii/model/ChatBubble;->type:I

    .line 69
    const/4 p3, 0x0

    .line 70
    const/4 v0, 0x2

    .line 71
    .line 72
    if-ne p1, v0, :cond_0

    .line 73
    const/4 p1, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move p1, p3

    .line 76
    .line 77
    :goto_0
    if-eqz p1, :cond_1

    .line 78
    move v1, p3

    .line 79
    goto :goto_1

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    const/high16 v2, 0x40000000    # 2.0f

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 89
    move-result v1

    .line 90
    float-to-int v1, v1

    .line 91
    .line 92
    :goto_1
    iget-object v2, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->imgPreview:Lcom/narvii/widget/NVImageView;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    .line 97
    iget-object v1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->imgPreview:Lcom/narvii/widget/NVImageView;

    .line 98
    .line 99
    if-eqz p1, :cond_2

    .line 100
    const/4 p1, 0x0

    .line 101
    goto :goto_2

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    const v2, 0x7f080140

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    :goto_2
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    .line 117
    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->imgPreview:Lcom/narvii/widget/NVImageView;

    .line 118
    .line 119
    iget-object v1, p2, Lcom/narvii/model/ChatBubble;->coverImage:Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    const p1, 0x7f0a0229

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    check-cast p1, Landroid/widget/TextView;

    .line 132
    .line 133
    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->tvBubbleName:Landroid/widget/TextView;

    .line 134
    .line 135
    iget-object v1, p2, Lcom/narvii/model/ChatBubble;->name:Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->tvBubbleName:Landroid/widget/TextView;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    const p1, 0x7f0a010a

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    if-eqz v1, :cond_3

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 160
    move-result-object p2

    .line 161
    .line 162
    iget p2, p2, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 163
    .line 164
    if-ne p2, v0, :cond_3

    .line 165
    goto :goto_3

    .line 166
    .line 167
    :cond_3
    const/16 p3, 0x8

    .line 168
    .line 169
    .line 170
    :goto_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 171
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/utils/SetBubbleHintDialog;)Lcom/narvii/model/ChatBubble;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->bubble:Lcom/narvii/model/ChatBubble;

    return-object p0
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendSetBubbleRequest(Z)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->bubble:Lcom/narvii/model/ChatBubble;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->threadId:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v3, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, p0, p1}, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;-><init>(Lcom/narvii/monetization/utils/SetBubbleHintDialog;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendApplyBubbleRequest(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0321

    .line 8
    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0cc6

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0cdc

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->sendSetBubbleRequest(Z)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    const-class p1, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->bubble:Lcom/narvii/model/ChatBubble;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const-string v1, "bubble"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->context:Lcom/narvii/app/NVContext;

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-static {v0, p1}, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 59
    :goto_0
    return-void
.end method

.method public setApplyAllChatBubbleListener(Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->listener:Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;

    return-void
.end method
