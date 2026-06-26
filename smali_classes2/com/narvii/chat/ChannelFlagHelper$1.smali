.class Lcom/narvii/chat/ChannelFlagHelper$1;
.super Ljava/lang/Object;
.source "ChannelFlagHelper.java"

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

    .line 119
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$1;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    iput-object p2, p0, Lcom/narvii/chat/ChannelFlagHelper$1;->val$flagReportDialog:Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$1;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    check-cast p1, Lcom/narvii/widget/FlagItemLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/chat/ChannelFlagHelper;->access$100(Lcom/narvii/chat/ChannelFlagHelper;Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/chat/ChannelFlagHelper;->access$002(Lcom/narvii/chat/ChannelFlagHelper;I)I

    .line 123
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$1;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {p1}, Lcom/narvii/chat/ChannelFlagHelper;->access$200(Lcom/narvii/chat/ChannelFlagHelper;)V

    .line 124
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$1;->val$flagReportDialog:Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
