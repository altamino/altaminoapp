.class Lcom/narvii/chat/ChannelFlagHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChannelFlagHelper;->showFlagDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChannelFlagHelper;

.field final synthetic val$flagReportDialog:Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChannelFlagHelper;Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$1;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/ChannelFlagHelper$1;->val$flagReportDialog:Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;

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
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$1;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 3
    .line 4
    check-cast p1, Lcom/narvii/widget/FlagItemLayout;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/narvii/chat/ChannelFlagHelper;->r(Lcom/narvii/chat/ChannelFlagHelper;Ljava/lang/String;)I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/narvii/chat/ChannelFlagHelper;->n(Lcom/narvii/chat/ChannelFlagHelper;I)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$1;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/chat/ChannelFlagHelper;->t(Lcom/narvii/chat/ChannelFlagHelper;)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$1;->val$flagReportDialog:Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 26
    return-void
.end method
