namespace my.bookshop;

entity Books
{
    key ID : Integer;
    title : String;
    publisherId : Integer;
    toPublisher : Composition of many Publishers on toPublisher.books = $self;
}

entity Publishers
{
    key publisherID : Integer;
    name : String(100);
    ranking : Integer;
    books : Association to one Books;
}
