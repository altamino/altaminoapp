.class public final synthetic Lcom/narvii/chat/video/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/video/view/LiveChannelEntryView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/view/LiveChannelEntryView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/view/a;->a:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    return-void
.end method


# virtual methods
.method public final onLiveModePicked(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/view/a;->a:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    invoke-static {v0, p1, p2}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->a(Lcom/narvii/chat/video/view/LiveChannelEntryView;IZ)V

    return-void
.end method
