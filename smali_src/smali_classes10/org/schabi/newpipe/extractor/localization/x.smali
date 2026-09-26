.class public final synthetic Lorg/schabi/newpipe/extractor/localization/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lorg/schabi/newpipe/extractor/localization/f0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/localization/f0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/x;->a:Lorg/schabi/newpipe/extractor/localization/f0;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/localization/x;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/x;->a:Lorg/schabi/newpipe/extractor/localization/f0;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/localization/x;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/extractor/localization/f0;->c(Lorg/schabi/newpipe/extractor/localization/f0;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
