.class public final synthetic Lcom/narvii/chat/util/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/ChatMessage;

    check-cast p2, Lcom/narvii/model/ChatMessage;

    invoke-static {p1, p2}, Lcom/narvii/chat/util/ChatHelper;->a(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)I

    move-result p1

    return p1
.end method
