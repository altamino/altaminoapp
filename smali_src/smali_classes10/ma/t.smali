.class public final synthetic Lma/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/schabi/newpipe/extractor/localization/f0;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/localization/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/t;->a:Lorg/schabi/newpipe/extractor/localization/f0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lma/t;->a:Lorg/schabi/newpipe/extractor/localization/f0;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, p1}, Lma/h0;->c0(Lorg/schabi/newpipe/extractor/localization/f0;Lcom/grack/nanojson/JsonObject;)Lx9/f;

    move-result-object p1

    return-object p1
.end method
