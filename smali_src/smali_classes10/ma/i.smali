.class public final synthetic Lma/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {p1}, Lma/h0;->l0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
