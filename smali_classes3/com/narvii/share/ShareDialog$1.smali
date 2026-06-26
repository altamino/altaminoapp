.class Lcom/narvii/share/ShareDialog$1;
.super Ljava/lang/Object;
.source "ShareDialog.java"

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

    .line 68
    iput-object p1, p0, Lcom/narvii/share/ShareDialog$1;->this$0:Lcom/narvii/share/ShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayload()Lcom/narvii/share/SharePayload;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/narvii/share/ShareDialog$1;->this$0:Lcom/narvii/share/ShareDialog;

    iget-object v0, v0, Lcom/narvii/share/ShareDialog;->sharePayload:Lcom/narvii/share/SharePayload;

    return-object v0
.end method

.method public onFinishShare(Lcom/narvii/share/SharePayload;Landroid/view/View;)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/narvii/share/ShareDialog$1;->this$0:Lcom/narvii/share/ShareDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method public onPreShare(Lcom/narvii/share/SharePayload;Ljava/lang/Object;)V
    .locals 3

    .line 76
    instance-of p1, p2, Lcom/narvii/share/ShareButtonCopyLink;

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/narvii/share/ShareDialog$1;->this$0:Lcom/narvii/share/ShareDialog;

    invoke-static {p1}, Lcom/narvii/share/ShareDialog;->access$000(Lcom/narvii/share/ShareDialog;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "CopyLink"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->copyLink:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    goto :goto_1

    .line 78
    :cond_0
    instance-of p1, p2, Lcom/narvii/share/elements/BaseElement;

    if-eqz p1, :cond_1

    .line 79
    check-cast p2, Lcom/narvii/share/elements/BaseElement;

    invoke-virtual {p2}, Lcom/narvii/share/elements/BaseElement;->targetName()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 81
    iget-object p2, p0, Lcom/narvii/share/ShareDialog$1;->this$0:Lcom/narvii/share/ShareDialog;

    invoke-static {p2}, Lcom/narvii/share/ShareDialog;->access$000(Lcom/narvii/share/ShareDialog;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    goto :goto_1

    .line 83
    :cond_1
    instance-of p1, p2, Lcom/narvii/share/ShareButtonCustomInfo;

    if-eqz p1, :cond_3

    .line 84
    check-cast p2, Lcom/narvii/share/ShareButtonCustomInfo;

    .line 85
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonCustomInfo;->getTargetName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 87
    iget-object v0, p0, Lcom/narvii/share/ShareDialog$1;->this$0:Lcom/narvii/share/ShareDialog;

    invoke-static {v0}, Lcom/narvii/share/ShareDialog;->access$000(Lcom/narvii/share/ShareDialog;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonCustomInfo;->getActSemantic()Lcom/narvii/logging/ActSemantic;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonCustomInfo;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonCustomInfo;->getExtraInfo()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 91
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_3
    :goto_1
    return-void
.end method
