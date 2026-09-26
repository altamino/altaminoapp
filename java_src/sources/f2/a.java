package f2;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class a<T> extends c<T> {
    private final Integer code;
    private final T payload;
    private final d priority;

    @Override // f2.c
    @Nullable
    public Integer a() {
        return this.code;
    }

    @Override // f2.c
    public T b() {
        return this.payload;
    }

    @Override // f2.c
    public d c() {
        return this.priority;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        Integer num = this.code;
        if (num != null ? num.equals(cVar.a()) : cVar.a() == null) {
            if (this.payload.equals(cVar.b()) && this.priority.equals(cVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.code;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.payload.hashCode()) * 1000003) ^ this.priority.hashCode();
    }

    public String toString() {
        return "Event{code=" + this.code + ", payload=" + this.payload + ", priority=" + this.priority + "}";
    }

    a(@Nullable Integer num, T t5, d dVar) {
        this.code = num;
        if (t5 != null) {
            this.payload = t5;
            if (dVar != null) {
                this.priority = dVar;
                return;
            }
            throw new NullPointerException("Null priority");
        }
        throw new NullPointerException("Null payload");
    }
}
