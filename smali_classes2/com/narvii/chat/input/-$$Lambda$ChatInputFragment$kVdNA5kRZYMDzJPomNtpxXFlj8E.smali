.class public final synthetic Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$kVdNA5kRZYMDzJPomNtpxXFlj8E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/input/ChatInputFragment;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$kVdNA5kRZYMDzJPomNtpxXFlj8E;->f$0:Lcom/narvii/chat/input/ChatInputFragment;

    iput-object p2, p0, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$kVdNA5kRZYMDzJPomNtpxXFlj8E;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$kVdNA5kRZYMDzJPomNtpxXFlj8E;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$kVdNA5kRZYMDzJPomNtpxXFlj8E;->f$0:Lcom/narvii/chat/input/ChatInputFragment;

    iget-object v1, p0, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$kVdNA5kRZYMDzJPomNtpxXFlj8E;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$kVdNA5kRZYMDzJPomNtpxXFlj8E;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/input/ChatInputFragment;->lambda$onMentionCharacterInput$1$ChatInputFragment(Ljava/lang/String;I)V

    return-void
.end method
