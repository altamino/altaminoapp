.class public interface abstract Landroidx/datastore/preferences/protobuf/LazyStringList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/ProtocolStringList;


# virtual methods
.method public abstract getRaw(I)Ljava/lang/Object;
.end method

.method public abstract getUnderlyingElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getUnmodifiableView()Landroidx/datastore/preferences/protobuf/LazyStringList;
.end method

.method public abstract h(Landroidx/datastore/preferences/protobuf/ByteString;)V
.end method
