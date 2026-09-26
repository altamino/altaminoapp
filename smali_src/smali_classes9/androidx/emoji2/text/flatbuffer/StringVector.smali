.class public final Landroidx/emoji2/text/flatbuffer/StringVector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "SourceFile"


# instance fields
.field private utf8:Landroidx/emoji2/text/flatbuffer/Utf8;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Utf8;->a()Landroidx/emoji2/text/flatbuffer/Utf8;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/StringVector;->utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

    .line 10
    return-void
.end method
