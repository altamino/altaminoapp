.class Lcom/narvii/share/ShareDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/share/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/ShareDialog;


# direct methods
.method constructor <init>(Lcom/narvii/share/ShareDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/share/ShareDialog$1;->this$0:Lcom/narvii/share/ShareDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getPayload()Lcom/narvii/share/SharePayload;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareDialog$1;->this$0:Lcom/narvii/share/ShareDialog;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/share/ShareDialog;->sharePayload:Lcom/narvii/share/SharePayload;

    .line 5
    return-object v0
.end method

.method public onFinishShare(Lcom/narvii/share/SharePayload;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/share/ShareDialog$1;->this$0:Lcom/narvii/share/ShareDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 6
    return-void
.end method

.method public onPreShare(Lcom/narvii/share/SharePayload;Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    instance-of p1, p2, Lcom/narvii/share/ShareButtonCopyLink;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/share/ShareDialog$1;->this$0:Lcom/narvii/share/ShareDialog;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/share/ShareDialog;->a(Lcom/narvii/share/ShareDialog;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string p2, "CopyLink"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    sget-object p2, Lcom/narvii/logging/ActSemantic;->copyLink:Lcom/narvii/logging/ActSemantic;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    instance-of p1, p2, Lcom/narvii/share/elements/BaseElement;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    check-cast p2, Lcom/narvii/share/elements/BaseElement;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/narvii/share/elements/BaseElement;->targetName()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result p2

    .line 41
    .line 42
    if-nez p2, :cond_3

    .line 43
    .line 44
    iget-object p2, p0, Lcom/narvii/share/ShareDialog$1;->this$0:Lcom/narvii/share/ShareDialog;

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Lcom/narvii/share/ShareDialog;->a(Lcom/narvii/share/ShareDialog;)Lcom/narvii/logging/LogEvent$Builder;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_1
    instance-of p1, p2, Lcom/narvii/share/ShareButtonCustomInfo;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    check-cast p2, Lcom/narvii/share/ShareButtonCustomInfo;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonCustomInfo;->getTargetName()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/share/ShareDialog$1;->this$0:Lcom/narvii/share/ShareDialog;

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lcom/narvii/share/ShareDialog;->a(Lcom/narvii/share/ShareDialog;)Lcom/narvii/logging/LogEvent$Builder;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonCustomInfo;->getActSemantic()Lcom/narvii/logging/ActSemantic;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonCustomInfo;->getExtraInfo()Ljava/util/HashMap;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonCustomInfo;->getExtraInfo()Ljava/util/HashMap;

    .line 96
    move-result-object p2

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 100
    move-result-object p2

    .line 101
    .line 102
    .line 103
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    .line 107
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v1

    .line 109
    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    .line 113
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v1

    .line 115
    move-object v2, v1

    .line 116
    .line 117
    check-cast v2, Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 125
    goto :goto_0

    .line 126
    .line 127
    .line 128
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 129
    :cond_3
    :goto_1
    return-void
.end method
