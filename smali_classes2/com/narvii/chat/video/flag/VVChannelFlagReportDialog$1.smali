.class Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog$1;
.super Ljava/lang/Object;
.source "VVChannelFlagReportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog$1;->this$0:Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog$1;->this$0:Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
