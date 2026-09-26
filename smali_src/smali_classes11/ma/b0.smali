.class public final synthetic Lma/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lorg/schabi/newpipe/extractor/services/youtube/a;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/b0;->a:Lorg/schabi/newpipe/extractor/services/youtube/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lma/b0;->a:Lorg/schabi/newpipe/extractor/services/youtube/a;

    check-cast p1, Ljava/util/Locale;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/a;->u(Ljava/util/Locale;)V

    return-void
.end method
